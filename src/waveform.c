/* =====================================================================
   David Aha
   August 1988
   Creates waveform domain data
   Usage: create-waveform number num-attributes
   See CART book, page 49 for details
   This is for the 21-attribute problem.

   Requires use of the UNIXSTAT tool named "probdist".

   modified by Friedrich Leisch on 2000/12/11 to use R's random number
   generator
   ===================================================================== */
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <R_ext/Random.h>

#define NUMBER_OF_ATTRIBUTES 21
#define NUMBER_OF_CLASSES 3

int num_instances;
double h[NUMBER_OF_CLASSES][NUMBER_OF_ATTRIBUTES];

/* =====================================================================
   Main Function
   ===================================================================== */
void waveform(int *R_num_instances, double *x, int *type)
{
   void execute(double *x, int *type);
   void initialize(void);

   num_instances = *R_num_instances;

   GetRNGstate();
   initialize();
   execute(x, type);
   PutRNGstate();
}

/* =====================================================================
   Initializes the algorithm.
   ==================================================================== */
void initialize(void)
{
   int i,j;

   /*==== Setup for waveform of types 1 through 3 ====*/
   for(i=0; i<3; i++)
      for(j=0; j<21; j++)
	h[i][j] = 0.0;

   /*==== Waveform 1 ====*/
   for(i=1; i<=6; i++)
     h[0][i] = (double)i;
   j=1;
   for(i=11; i>=7; i--)
     { h[0][i] = (double)j;
       j++;
     }

   /*==== Waveform 2 ====*/
   j = 1;
   for(i=9; i<=14; i++)
     { h[1][i] = (double)j;
       j++;
     }
   j=1;
   for(i=19; i>=15; i--)
     { h[1][i] = (double)j;
       j++;
     }

   /*==== Waveform 3 ====*/
   j = 1;
   for(i=5; i<=10; i++)
     { h[2][i] = (double)j;
       j++;
     }
   j=1;
   for(i=15; i>=11; i--)
     { h[2][i] = (double)j;
       j++;
     }

}
   
/* =====================================================================
   Executes the algorithm.
   ===================================================================== */
void execute(double *x, int *type)
{
    int num_instance, num_attribute;
    int waveform_type, choice[2];
    double random_attribute_value, multiplier[2];

    
    for(num_instance=0; num_instance<num_instances; num_instance++)
    {  /*==== Set up class type ====*/
	waveform_type = floor(3*unif_rand());
	switch (waveform_type)
	{ case 0: choice[0] = 0; choice[1] = 1; break;
	case 1: choice[0] = 0; choice[1] = 2; break;
	case 2: choice[0] = 1; choice[1] = 2; break;
	}
	
	/*==== Set up u and (1-u) for this call ====*/
	multiplier[0] = unif_rand();
	multiplier[1] = 1.0 - multiplier[0];
	
	/*==== Create the instance ====*/
	for(num_attribute=0; num_attribute<NUMBER_OF_ATTRIBUTES;
	    num_attribute++)
	{
	    random_attribute_value = norm_rand();
	    /*==== Calculate the value ====*/
	    x[num_instance*NUMBER_OF_ATTRIBUTES + num_attribute] =
		(multiplier[0] * h[choice[0]][num_attribute]) +
		(multiplier[1] * h[choice[1]][num_attribute]) +
		random_attribute_value;
	}

	type[num_instance] = waveform_type;	
    }
}


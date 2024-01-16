##Functional enrichment analysis
          #*over representatiomn analysis & gene set enrichment analysis

#once you have a list of differentially expresed genes you can go ahead and sear h for enruched functions using 2 approcahes
          ##over representation analysis & gene set enrichment analysis

#OVER REPRESENTATION ANALYSIS
#searching for pathways that are enriched compared to the complete list 
#use hypergeometric distribution 
#steps
          #compute probabilities of saample
          #compare probabilties usinf sihers exact test (one sided test)
          #p value for makung decision



#over representation tests if a large sanple of DEGs are present in the functional term
#*graphical techniques
      #category networK plot & emapplot

#GENE SET ENRICHMENT ANALYSIS
#USED TO DETERMINE for significant enriched gene set using ranks and weights of gene list. 
#graphical representation ---- dot plot & heat plot

#STEPS
              #RANK GENE LIST
              #ASSIGN ENRICHMENT SCORES FOR THE GEBE SAMPLERS FOR EACH FUNCTIONAL TEAM
              #PERFORM RNDOM RANKING 
              #OBTAIN TWO RESULTS---ORIGINAL ENRICHEMENT WEIGHT & RANDOM ENRICHMENT 
              #TEST FOR DIFFRENCES IN THE TWO RESULTS---KOLMOGNR SMIRNOV TEST
              #P VALUE TO MAKE DECISION 
              #USE CLUSTER PROFILE PAXKAGE IN R TO PERFORM FUNCTIONAL ENRICHMENT ANALYSIS


# browseVignettes(
#A vignette is a long-form guide to your package. 
#Function documentation is great if you know the name of the function you need, but it’s useless otherwise. 
#A vignette is like a book chapter or an academic paper: 
#it can describe the problem that your package is designed to solve, and then show the reader how to solve it.
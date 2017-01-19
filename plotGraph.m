function[]=plotGraph()     
Y=[   0   -3.5641   -3.4580   -3.4059   -3.3457   -3.3108   -3.3019   -3.2946   -3.2965   -3.2916   -3.2998   -3.2833   -3.2928   -3.2952   -3.2842   -3.2907
         -3.2912   -3.2794   -3.2818   -3.2909   -3.2786   -3.2763   -3.2732   -3.2740   -3.2797   -3.2757   -3.2765   -3.2789   -3.2789   -3.2747   -3.2781   -3.2744
        -3.2780   -3.2861   -3.2782   -3.2908   -3.2708   -3.2773   -3.2780   -3.2772   -3.2825   -3.2824   -3.2834   -3.2738   -3.2691   -3.2684   -3.2720   -3.2637
       -3.2646   -3.2639   -3.2657   -3.2638   -3.2675   -3.2623   -3.2665   -3.2634   -3.2661   -3.2609   -3.2625   -3.2614   -3.2682   -3.2660   -3.2696   -3.2628
       -3.2687   -3.2655   -3.2653   -3.2674   -3.2618   -3.2653   -3.2610   -3.2629   -3.2630   -3.2631   -3.2650   -3.2690   -3.2604   -3.2599   -3.2632   -3.2622
       -3.2657   -3.2637   -3.2617   -3.2638   -3.2614   -3.2604   -3.2604   -3.2604   -3.2594   -3.2656   -3.2600   -3.2606   -3.2668   -3.2603   -3.2714   -3.2600
      -3.2595   -3.2613   -3.2634   -3.2633   -3.2644   -3.2718   -3.2634   -3.2693   -3.2628   -3.2626   -3.2753   -3.2668   -3.2644   -3.2670   -3.2684   -3.2661
      -3.2725   -3.2618   -3.2634   -3.2635   -3.2593   -3.2581   -3.2606   -3.2651   -3.2596   -3.2594   -3.2645   -3.2761   -3.2621   -3.2633   -3.2623   -3.2603
      -3.2599   -3.2649   -3.2612   -3.2603   -3.2644   -3.2587   -3.2716   -3.2596   -3.2611   -3.2588   -3.2587   -3.2622   -3.2559   -3.2480   -3.2498   -3.2547
      -3.2478   -3.2530   -3.2597   -3.2505   -3.2547   -3.2568   -3.2645   -3.2520   -3.2541   -3.2532   -3.2592   -3.2506   -3.2536   -3.2555   -3.2513   -3.2486
      -3.2567   -3.2556   -3.2487   -3.2477   -3.2521   -3.2493   -3.2508   -3.2490   -3.2483   -3.2479   -3.2513   -3.2509   -3.2541   -3.2551   -3.2520   -3.2620
      -3.2615   -3.2572   -3.2595   -3.2511   -3.2528   -3.2524   -3.2573   -3.2528   -3.2525   -3.2483   -3.2578   -3.2525   -3.2515   -3.2576   -3.2636   -3.2463];
extra=[-3.2422   -3.2485   -3.2450   -3.2378   -3.2468   -3.2378   -3.2409   -3.2456   -3.2299];

Y=1000*[reshape(Y',1,192) extra];
Y=Y(1,2:201);

for i=1:200
    X(i)=i;
end
      
plot(X,Y);
set(gca,'Xtick',0:20:200);
set(gca,'Ytick',-3600:100:-3200);
xlabel('Iteration'); ylabel('logP(X,Z)');
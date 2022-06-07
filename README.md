# Quantitative Single-Neuron Modeling Competition (2007)

## Questions

- Is it possible to predict the timing of every spike that a neuron emits with a precision of 2 ms?
- Is it possible to predict the subthreshold membrane potential with a precision of 2 mV for arbitrary input?

## Data Format

Data will be available for parameter optimization (training data, input and output given) and prediction (test data, only input given).

### Challenge A 

Single-electrode data from cortical neurons under random current injection. Stimulation is done with currents of different means and fluctation amplitudes. For each input, 4 repetitions of the same stimulus are available so as to estimate the intrinsic reliability of neurons. Several stimulation sets are set apart for the prediction. 

### Challenge B

Single-electrode data from cortical neurons under various current injection paradimgs. Stimulation is done with current steps of different amplitudes and duration. Several input samples (step of different duration and amplitude as well as repeated short current pulses) will given as training data together with the electrophysiological measurements. Several stimulation sets with different current step profiles are set apart for the prediction as well as a slow ramp stimulus. For these the input is given, but not the measured voltage trace. 

### Challenge C

Two electrode data from cortical neurons under random current injection at soma and dendrite. 
Stimulation is done with currents of different means and fluctuation amplitudes. Some traces (input current plus measured voltage) are given for training. Several stimulation sets are set apart for the prediction. 

### Challenge D

More multi-electrode data with a focus on subthreshold stimulation. The membrane potential of a layer V pyramida neuron was always simultaneously recorded at three locations: the soma (S1), a distal dendritic location (D1) and a proximal dendritic location (D2). 

## Methods 

The only aspect that counts for us is the quality of the prediction on the test set. In terms of methods, anything goes. In particular we welcome contributions using

- Machine learning methods (SVM, Adaboost, ANN, kNN, ...)
- Systems idenfication methods and dynamical systems (Wiener kernel, nonlinear dynamics, cascade model etc)
- Simplified neuron models (integrate-and-fire, FitzHugh-Nagumo)
- Conductance-based neuron models (Hodgkin-Huxley-type models, multicompartment-multichannel models ...)
- Deterministic or stochastic models

## References 

1. Jolivet, R., Schürmann, F., Berger, T.K. *et al.* The quantitative single-neuron modeling competition. *Biol Cybern* **99,** 417 (2008). https://doi.org/10.1007/s00422-008-0261-x

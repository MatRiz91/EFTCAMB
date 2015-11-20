script_folder=test_scripts/

all: legacy stability plot profile benchmark spectra

spectra:
	./$(script_folder)test_spectra.sh

plot:
	./$(script_folder)test_plot.sh

benchmark:
	./$(script_folder)test_benchmark.sh

profile:
	./$(script_folder)test_profile.sh

stability:
	./$(script_folder)test_stability.sh


legacy: spectra
	./$(script_folder)legacy_comp_spectra.sh

create_legacy: spectra legacy
	@rm -rf results_legacy/Spectra_Legacy/*
	@mv -f  results/Spectra_results/* results_legacy/Spectra_Legacy/

clean:
	@rm -rf results/Spectra_results/*
	@rm -rf results/Spectra_Plots/*
	@rm -rf results/Stability_Results/*
	@rm -rf results/Stability_Plots/*
	@rm -rf results/Profile/*
	@rm -rf results/Legacy_Spectra_Plot/*
	@rm -rf results/Benchmark_Results/*

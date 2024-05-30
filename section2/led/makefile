verilate: $(SIM) $(DESIGN)
	verilator --cc -CFLAGS -fcoroutines-ts -CFLAGS -std=c++20  --exe --build -j 0 -Wall $(SIM) $(DESIGN) --timing
	@echo "\n"
	@echo "Success: Running \"V$(basename $(DESIGN))\" "
	./obj_dir/V$(basename $(DESIGN))
	
verilate-strict: $(SIM) $(DESIGN)
	verilator --Wall --cc -CFLAGS -fcoroutines-ts -CFLAGS -std=c++20  --exe --build -j 0 -Wall $(SIM) $(DESIGN) --timing
	@echo "\n"
	@echo "Success: Running \"V$(basename $(DESIGN))\" "
	./obj_dir/V$(basename $(DESIGN))

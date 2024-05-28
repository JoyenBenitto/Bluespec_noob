include makefile.inc

default: sim

.PHONY: sim
sim:
	@echo "Running sim cmd"
	@bsc -verilog -p $(BSCINCDIR) -vdir $(VERILOGDIR) -bdir $(BDIR)  -info-dir $(BSVBUILDDIR) -g $(TOP_MODULE) $(TOPFILE_DIR)/$(TOPFILE)
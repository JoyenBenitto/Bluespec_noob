include Makefile.inc

BSVINCDIR:= ./:%/Libraries
BUILDDIR:=../build
BDIR:= $(BUILDDIR)/b
VDIR:= $(BUILDDIR)/verilog

BSCCMD:= bsc -p $(BSVINCDIR) -u -g $(TOP_MODULE) -bdir $(BDIR) -vdir $(VDIR) -keep-fires -opt-undetermined-vals -remove-false-rules -verilog $(FILE)

generate: 
	@echo "Generating Verilog $(TOP_MODULE) from BSV: $(FILE)"
	$(BSCCMD)

clean:
	@echo "Cleaning $(BUILDDIR) directory"
	@rm $(BUILDDIR)/b/*.bo
	@rm $(BUILDDIR)/verilog/*.v
	@echo "$(BUILDDIR) cleaned"

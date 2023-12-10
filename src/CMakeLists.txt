add_library(fishpack90 STATIC)
target_sources(
	fishpack90 PUBLIC
	blktri.f
	cblktri.f
	cmgnbn.f
	comf.f
	fftpack.f
	fish.f
	genbun.f
	gnbnaux.f
	hstcrt.f
	hstcsp.f
	hstcyl.f
	hstplr.f
	hstssp.f
	hw3crt.f
	hwscrt.f
	hwscsp.f
	hwscyl.f
	hwsplr.f
	hwsssp.f
	pois3d.f
	poistg.f
	sepaux.f
	sepeli.f
	sepx4.f
)
target_compile_options(fishpack90 BEFORE PRIVATE
    "-w" "-fallow-argument-mismatch" "-fdefault-real-8"
)
install(
	TARGETS fishpack90
	EXPORT ${PROJECT_NAME}Targets
)
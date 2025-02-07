CFLAGS=
fastblur: obj/fastblur.o
	gcc $(CFLAGS) obj/fastblur.o -o fastblur -lm

cudablur: obj/cudablur.o
	nvcc $(CFLAGS) obj/cudablur.o -o cudablur -lm

obj/fastblur.o: fastblur.c
	gcc -c $(CFLAGS) fastblur.c -o obj/fastblur.o 

obj/cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -o obj/cudablur.o


clean:
	rm -f obj/* fastblur output.png

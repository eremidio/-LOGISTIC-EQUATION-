!UMA SIMULAÇÃO NÚMERICA DA EQUAÇÃO LOGÍSTICA EXPONENCIAL
program logistica2
implicit none

!DEFINIÇÃO DE VARIÁVEIS
integer::n, i, fu, ios
character(len=*), parameter::filename='logistica2.txt'
real(kind=kind(1.0d0)), dimension(:), allocatable::x
real(kind=kind(1.0d0))::x0, r

!AJUSTE DE PARÂMETROS DA SIMULAÇÃO
write(*,*) "Qual o valor inicial da sua população?"
read(*,*)x0
write(*,*) "Qual o valor da sua taxa de crescimento?"
read(*,*)r
write(*,*) "Quantas iterações você deseja usar?"
read(*,*)n

!ABRINDO UM ARQUIVO PARA REGISTRO DE DADOS
open(newunit=fu,file=filename, status="replace", action="readwrite", iostat=ios)

!COMPUTANDO OS TERMOS DA EQUAÇÃO LOGÍSTICA EXPONENCIAL E PLOTANDO UM GRÁFICO
allocate(x(n))
x(0)=x0
do i=0, n, 1
x(i+1)= x(i)*exp(r*(1.0-x(i)))
write(unit=fu,fmt=*)i, x(i)
enddo

!PLOTAGEM DE GRÁFICOS USANDO O GNUPLOT
call execute_command_line("gnuplot -p plot5.plt")

deallocate(x)
close (unit=fu, status="keep", iostat=ios)
end program logistica2



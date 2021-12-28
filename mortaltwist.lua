-- Mortal Twist
-- For Lovebyte Battlegrounds 2k21
-- Fantasy Console 256 Byte intro compo
-- Platform: TIC-80
-- F#READY, 2021-09-24

a={}c={}z=1200
w=240
for l=0,w do
  a[l]=math.random(0,w)
  c[l]=math.random(8,12)
end
l=0
function TIC()
cls()t=time()//1000
z=z-1
for x=0,w do
  h=math.min(t,15)
  k=c[l]%h,c[l]
  pix(x,68+math.sin((6.28/w)*a[l])*34//1+math.sin((6.28/w)*l)*34//1,k)
  l=(l+1)%w
  a[l]=a[l]+1
poke(65437,a[l]%k+k*16)
print("Most excellent music",z,z/2,k)
end
for i=0,8 do
  poke4(2*65438+i,h%138)
end
end
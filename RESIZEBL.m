function bilinear = RESIZEBL(orig, zoom)
    [orig_x2, orig_y2, orig_z2] = size(orig);
    final_x = orig_x2 * zoom;
    final_y = orig_y2 * zoom;
    
    bilinear = zeros(final_x, final_y, 3, 'uint8');
    
    for k=1:orig_z2
        for i=1:final_x-1
            for j=1:final_y-1
                
                r1 = i/zoom;
                c1 = j/zoom;
                
                r0 = floor(r1);
                c0 = floor(c1);
                
                dr = r1 - r0;
                dc = c1 - c0;
                if(r0<1)
                    r0 = 1;
                end
                if(c0<1)
                    c0 = 1;
                end
                
                bilinear(i,j,k) = orig(r0, c0, k)*(1-dr)*(1-dc) + orig(r0+1, c0, k)*(dr)*(1-dc) + orig(r0, c0+1, k)*(1-dr)*(dc) + orig(r0+1, c0+1, k)*(dr)*(dc);
            end
        end
    end
    %imwrite(bilinear, 'output.jpeg');
end

             
               
               
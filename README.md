# cmap_picker

Pick a colormap from the colorbar in an image

Requires the Image Processing Toolbox!

## Usage

https://user-images.githubusercontent.com/4486578/162355888-9562e3ff-7cd8-4d4c-ba3c-0f1adeb351af.mov

1. Find an image with a colorbar you want (e.g., take a screenshot)

2. Call `cmap = cmap_picker(impath)`
   This will open a figure window with your image in it.

3. Draw a rectancgle with your mouse (click-and-drag)
   A colormap will be built by averaging over the colorbar's "width"
   (depending on the orientation of your rectangle).
   A colorbar will also be added next to the figure to show you the colormap
   you just made.

## Example:

Try this command and select whichever colorbar you want!

```matlab
cmap = cmap_picker('https://matplotlib.org/stable/_images/sphx_glr_colormaps_001_2_0x.png');
```

and select the colormap of your choice, which will be saved in the variable `cmap` above. You can then save it or use it as you would anyother colormap!




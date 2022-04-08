# cmap_picker

Pick the colormap from a colorbar in an image.

When you want to compare your results with someone else's, it can be hard to reproduce a map or a plot with a colormap that you don't have in your setup. This tool allows you to create a colormap that matches that of any figure. You just have to accurately select where the colorbar is on the image/figure.

Here's an example of extracting the colormap from an image with some of matplotlib's colormaps:

https://user-images.githubusercontent.com/4486578/162355888-9562e3ff-7cd8-4d4c-ba3c-0f1adeb351af.mov

 (Note I'm not very precise in my selection, surely you can do better!)

To check if you got it right, a colorbar with your newly created colormap is shown on the right.

Requires the Image Processing Toolbox!

## Usage

1. Find an image with a colorbar you want (e.g., take a screenshot)

2. Call `cmap = cmap_picker(image_path)`
   This will open a figure window with your image displayed in it.
   (Don't forget to edit `image_path` to be your image's path!)

3. And draw a rectancgle with your mouse (click-and-drag)!
   A colormap will be built by averaging over the colorbar's "width"
   (depending on the orientation of your rectangle).
   And a colorbar will be added to the figure to show you the colormap you just created.

## Example:

Try this command and select whichever colorbar you want!

```matlab
cmap = cmap_picker('https://matplotlib.org/stable/_images/sphx_glr_colormaps_001_2_0x.png');
```

You can then save the variable `cmap` or use it once, as you would anyother colormap!

[![View cmap_picker on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://au.mathworks.com/matlabcentral/fileexchange/109635-cmap_picker)

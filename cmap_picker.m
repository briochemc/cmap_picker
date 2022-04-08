function cmap = cmap_picker(impath)
%    cmap = cmap_picker(impath)
%
% Returns the colormap of the colorbar that you select from an image.
%
% Requires the image processing toolbox!
%
% Usage:
%
% 1. Find an image with a colorbar you want (e.g., take a screenshot)
%
% 2. Call `cmap = cmap_picker(impath)`
%    This will open a figure window with your image in it.
%
% 3. Draw a rectancgle with your mouse (click-and-drag)
%    A colormap will be built by averaging over the colorbar's "width"
%    (depending on the orientation of your rectangle).
%    A colorbar will also be added next to the figure to show you the colormap
%    you just made.
%

% Copyright (c) 2022 Benoit Pasquier
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

% Show image
image = imread(impath);

% Select colorbar from it
imshow(image)
rect = drawrectangle().Position;
captured_cbar = imcrop(image, rect);

% Chose orientation along the largest dimension of rectangle
[h, w, ~] = size(captured_cbar);
if h >= w
    cmap = flipud(squeeze(mean(captured_cbar, 2))) / 256;
else
    cmap = squeeze(mean(captured_cbar, 1)) / 256;
end

% Show the colormap in a colorbar to check it worked
colormap(cmap)
colorbar()




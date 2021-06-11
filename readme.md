A repository of plugins for the GIMP app.

Mainly for my personal use in testing.

For use in testing GIMP, not for use to process images.
The plugins don't all work.
Some are specifically for testing GIMP or some other software and do no useful image processing.

Some were originally intended to do image processing, but they are in this repository only for testing them.

Each in its own directory to mirror how Gimp requires they be installed.
Each plugin main .py file must have execute permission.

Categories:
- wild: gleaned from the web. Authors are third parties, rarely Gimp.org
- test: unit tests of GimpFu features.  Author self
- nonGimpFu: unit tests of GI's Python plugins.  Author self
- bad: abandoned active testing, horrible.

General notes about my testing.
I was mainly testing the GIMP app and a new version of GimpFu.
I searched the net for existing GimpFu plugins.

When I find a plugin that fails on some little used corner case,
or where the plugin is obviously second rate or hard to understand, I move on.
When I find another failure I have seen before, I might then address the issue.
My intent was to explore depth first.
I.E. find many issues, fix the important ones,
especially issues that seem pop up again and seem to prevent finding more issues.

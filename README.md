# Bug in Rbx using rubysl-csv-2.0.2

I get a CSV::MalformedCSVError on rbx but not MRI for the following command
and file.


```rbx -v g.rb ```

```
rubinius 2.5.8 (2.1.0 bef51ae3 2015-07-16 3.5.0 JI) [x86_64-darwin14.3.0]
An exception occurred running g.rb

Unquoted fields do not allow \r or \n (line 96). (CSV::MalformedCSVError)

Backtrace:

                  { } in CSV#shift at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1860
                        Array#each at kernel/bootstrap/array.rb:76
                  { } in CSV#shift at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1825
                  Kernel(CSV)#loop at kernel/common/kernel.rb:511
                         CSV#shift at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1785
                          CSV#each at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1727
                { } in CSV.foreach at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1121
                          CSV.open at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1267
                       CSV.foreach at /opt/rubinius-2.5.8/gems/gems/rubysl-csv-2.0.2/lib/rubysl/csv/csv.rb:1120
                 Object#__script__ at g.rb:8
  Rubinius::CodeLoader#load_script at kernel/delta/code_loader.rb:66
  Rubinius::CodeLoader.load_script at kernel/delta/code_loader.rb:152
           Rubinius::Loader#script at kernel/loader.rb:656
             Rubinius::Loader#main at kernel/loader.rb:842
```

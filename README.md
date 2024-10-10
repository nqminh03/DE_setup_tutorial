# DE_tutorial
 If you have any questions, please contact [me](https://www.facebook.com/quangminh.nguyen.7946281).

## Tutorial
 
### 1. **Nghiên cứu & Cài đặt DWH DBMS Server (MySQL)**:
   - **Mục tiêu**: Cài đặt và cấu hình hệ thống quản trị cơ sở dữ liệu để lưu trữ dữ liệu.
   - **Công việc chi tiết**:
     - Nghiên cứu sự khác biệt giữa các hệ quản trị cơ sở dữ liệu (DBMS) phổ biến: MSSQL, MySQL, PostgreSQL. [Bài viết](https://www.datacamp.com/blog/sql-server-postgresql-mysql-whats-the-difference-where-do-i-start)[newtab]
     - Quyết định chọn DBMS phù hợp cho dự án.
     - Tải và cài đặt DBMS ([MySQL](https://dev.mysql.com/downloads/installer/)).
     - Cấu hình kết nối cơ sở dữ liệu và kiểm tra bằng cách tạo các bảng mẫu.

### 2. **Tạo 2 Databases (Schemas) giả lập DWH và DataMart DB** *(Mở và chạy file data_base)*:
   - **Mục tiêu**: Xây dựng hai cơ sở dữ liệu giả lập để chứa dữ liệu của Data Warehouse (DWH) và DataMart.
   - **Công việc chi tiết**:
     - Tạo hai schema (DWH và DataMart) trong DBMS đã cài đặt.
     - Thiết lập các bảng, cột, và mối quan hệ giữa các bảng (relationship) theo mô hình sao hoặc tuyết.
     - Thiết kế các bảng dữ liệu thô và tổng hợp trong DataMart phục vụ cho việc phân tích và báo cáo.

### 3. **Dựng cấu trúc DWH Data Model theo tài liệu cung cấp** *(Mở và chạy lần lượt từng file trong folder **tables**)*:
   - **Mục tiêu**: Xây dựng mô hình dữ liệu cho DWH theo yêu cầu của dự án.
   - **Công việc chi tiết**:
     - Nghiên cứu tài liệu thiết kế dữ liệu DWH, bao gồm các yêu cầu về dữ liệu và báo cáo. [Tổng quan về ER](https://www.guru99.com/vi/er-diagram-tutorial-dbms.html)
     - Phân tích các bảng nguồn dữ liệu để xác định cách tích hợp và lưu trữ dữ liệu trong DWH.
     - Cài đặt các bảng này trong DBMS **dwh**.
     - Dựng mô hình ER (Entity-Relationship) cho DWH, xác định các bảng Dimension (chiều) và Fact (sự kiện), thực hiện như sau:
   Để tạo EER Diagram trong MySQL Workbench từ một cơ sở dữ liệu đã có sẵn dữ liệu (chứ không phải từ một mô hình mới), bạn có thể thực hiện các bước sau:

#### Bước 1: Kết nối với cơ sở dữ liệu

1. Mở MySQL Workbench.
2. Kết nối với server MySQL của bạn nơi có cơ sở dữ liệu mà bạn muốn tạo EER Diagram.

#### Bước 2: Tạo EER Diagram từ cơ sở dữ liệu có sẵn

1. **Mở menu Database**:
   - Trên menu, chọn **Database** > **Reverse Engineer**.

2. **Chọn cơ sở dữ liệu**:
   - Trong hộp thoại xuất hiện, chọn kết nối đến cơ sở dữ liệu mà bạn muốn tạo EER Diagram.
   - Nhấp **Next**.

3. **Chọn các đối tượng**:
   - Tại đây, bạn sẽ thấy danh sách các bảng và đối tượng khác trong cơ sở dữ liệu của bạn. Chọn các bảng mà bạn muốn bao gồm trong EER Diagram.
   - Nhấp **Next**.

4. **Hoàn tất**:
   - Sau khi chọn các bảng, nhấp **Execute** để MySQL Workbench tạo EER Diagram cho bạn.
   - Một EER Diagram mới sẽ được tạo ra với các bảng và mối quan hệ giữa chúng.

#### Bước 3: Tinh chỉnh và lưu EER Diagram

1. **Chỉnh sửa Diagram**:
   - Bạn có thể kéo và sắp xếp lại các bảng trong diagram.
   - Nhấp đúp vào các bảng để chỉnh sửa thuộc tính hoặc xem cấu trúc của bảng.

2. **Lưu Diagram**:
   - Nhấn vào **File** > **Save Model** để lưu EER Diagram của bạn.

#### Bước 4: Xuất Diagram

1. **Xuất ra hình ảnh hoặc PDF**:
   - Nếu bạn muốn xuất EER Diagram ra định dạng hình ảnh hoặc PDF, bạn có thể làm theo các bước đã nêu ở phần trước.

## **Ở mục 4 & 5, nếu muốn tìm hiểu thêm thì tải thêm mục 4, ở project này mình sẽ sử dụng Apache Nifi ở mục 5**

### 4. **Nghiên cứu & Cài đặt công cụ ETL và sử dụng - Talend ETL** (Công cụ này sẽ mất phí, có thể sử dụng bản trial):
   - **Mục tiêu**: Sử dụng công cụ ETL để thực hiện quá trình trích xuất, chuyển đổi, và tải dữ liệu từ nguồn vào DWH.
   - **Công việc chi tiết**:
     - Nghiên cứu về Talend ETL ([Tải Talend](https://www.talend.com/products/talend-open-studio/)) và xem cách nó hỗ trợ quá trình ETL.
     - Cài đặt Talend ETL trên máy tính.
     - Tạo các luồng công việc ETL để di chuyển dữ liệu từ các nguồn vào DWH đã tạo, bao gồm trích xuất dữ liệu từ nguồn, làm sạch và chuẩn hóa, sau đó nạp vào DWH.

### 5. **Nghiên cứu & Cài đặt công cụ ETL và sử dụng - Apache Nifi**:
   - **Mục tiêu**: Sử dụng Apache Nifi như một công cụ thay thế cho ETL để di chuyển dữ liệu.
   - **Công việc chi tiết**:
     - Cài đặt Java trước nhé ([Tải Java](https://download.oracle.com/java/23/latest/jdk-23_windows-x64_bin.msi)). [Hướng dẫn](https://www.youtube.com/watch?v=jPwrWjEwtrw&t=284s)
     - Nghiên cứu Apache Nifi ([Tải Nifi](https://dlcdn.apache.org/nifi/2.0.0-M4/nifi-2.0.0-M4-bin.zip)). [Video hướng dẫn](https://www.youtube.com/watch?v=YVK3Wg_DvHc)
     - Link truy cập Nifi "https://localhost:8443/nifi/"
     - Tải và cài đặt [Driver Connection của MySQL](https://dev.mysql.com/downloads/file/?id=530070) ([Video hướng dẫn](https://www.youtube.com/watch?v=8aTpDfsYTNQ)) và cấu hình Nifi.
     - Xây dựng luồng dữ liệu trong Nifi để thực hiện ETL, tương tự như cách làm với Talend ETL ở trên.
    
### 6. **Nghiên cứu & Cài đặt công cụ Orchestration và sử dụng - Apache Airflow** ([Video hướng dẫn](https://www.youtube.com/watch?v=Fl64Y0p7rls):
   - **Mục tiêu**: Quản lý và điều phối các quy trình ETL và các công việc khác bằng Apache Airflow.
   - **Công việc chi tiết**:
     - Cài đặt Docker trước nhé [Tải Docker](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-win-amd64)
     - Cài đặt Visual Studio Code [Tải Visual Studio Code](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user)
     - Xem video hướng dẫn cài đặt Apache Airflow ở trên
     - Cài đặt và thiết lập Airflow trên môi trường phát triển.
     - Viết các DAGs (Directed Acyclic Graphs) trong Airflow để tự động hóa quy trình ETL từ các công cụ như Talend hoặc Nifi.
     - Cấu hình các nhiệm vụ như tải dữ liệu, cập nhật DWH, và gửi thông báo khi hoàn thành.

** Mục 5 và 6 sẽ có buổi Meet hướng dẫn tạo luồng dữ liệu để tiền xử lý dữ liệu và import data vào các bảng trong Database **


### 7. **Nghiên cứu & Chuẩn bị tài khoản cá nhân PowerBI/ Excel**:
   - **Mục tiêu**: Sử dụng các công cụ trực quan hóa dữ liệu để tạo báo cáo từ dữ liệu trong DWH.
   - **Công việc chi tiết**:
     - Hoặc sử dụng Power BI ([Tải Power BI](https://powerbi.microsoft.com/) hoặc **Tải xuống từ Microsoft Store trên Windows) để kết nối với cơ sở dữ liệu và trực quan hóa dữ liệu.
     - Thiết lập kết nối từ Power BI/Google Data Studio tới DWH để truy vấn và trực quan hóa dữ liệu.

### 8. **Nghiên cứu & Cài đặt Anaconda & Python/Jupyter Notebook** (Đa phần mọi người đều có trong máy rồi nên mình sẽ bỏ qua):
   - **Mục tiêu**: Sử dụng Python và Jupyter Notebook để phân tích và xử lý dữ liệu.
   - **Công việc chi tiết**:
     - Tải và cài đặt [Python](https://www.python.org/downloads/)
     - Tải và cài đặt [Anaconda](https://www.anaconda.com/products/individual) để thiết lập môi trường Python tích hợp.
     - Cài đặt Jupyter Notebook và các thư viện liên quan đến phân tích dữ liệu như `pandas`, `numpy`, `matplotlib`.
     - Kết nối Jupyter Notebook với DWH để truy xuất dữ liệu và thực hiện các phân tích nâng cao.
     - Sử dụng các thuật toán học máy hoặc công cụ phân tích dữ liệu khác nếu cần thiết.

# Folder Structure:
- download_data.ipynb : dùng để tải dữ liệu trong một khoảng thời gian.
  
- Note : Chứa một số idea mà em note trong quá trình đọc paper để implement code
  
- LPPLS : Code python cho LPPLS model
  
- GSADF : Code R cho GSADF model

# Empirical findings

### GSADF results 
- Kết quả từ 01/01/2017-01/01/2022

![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/fb0a43d4-e2cd-4670-bf10-a570b8286e9d)

![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/d1ac129b-cc8e-4ee6-b7d1-39235af719ed)

Từ đồ thị trên ta có thể thấy trong giai đoạn 2017-2018 xuất hiện nhiều bong bóng, bong bóng dài nhất kéo dài từ 2017-11-15 đến 2017-12-22 (37 ngày) sát với những gì được liệt kê [Cryptocurrency bubble](https://en.wikipedia.org/wiki/Cryptocurrency_bubble)

Đồng thời trong năm 2019 cũng đã xác định một nhiều bong bóng nhưng chủ yếu ta thấy model đã xác định được từ 2019-06-21 đến 2019-06-30 có hiện tượng bong bóng xảy ra sát với kết quả trong paper yao2020

Model cũng xác định được giai đoạn giữa tháng 11-2020 đến tháng 01-2021 và từ đầu năm 2021 đến khoảng giữa tháng 5-2021 tồn tại các bong bóng giống như trên wiki đã nói

- Kết quả từ năm 01/01/2022-04/25/2024

![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/1692e7d2-80aa-4bf9-925a-4af1e1e3d57a)

![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/5f62763f-1fad-4188-ba50-57b5531caab5)


### LPPLS results

Sử dụng khoảng bong bóng từ model GSADF chúng ta có thể tìm được bursting point của bubbles
![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/2f8acdc6-19d8-44d4-8011-21076594519b)

![image](https://github.com/VinhPhamAI/economic-bubble/assets/115690131/18dc8a27-9655-44dd-86b5-53c104a69b41)

# Conclusion

Mặc dù GSADF method có thể tìm kiếm khoảng thời gian xuất hiện bubbles một cách hiệu quả, tuy nhiên model này chưa tính toán được chính xác bursting point của bubble. Nên chúng ta dùng khoảng thời gian thu được từ GSADF model để employ LPPLS model để suy ra thời gian bubble bursts.

Ngoài ra từ hệ số log-periodic frequency ω trong model LPPLS ta có thể biết được sự biến động. Tần số log-periodic càng cao thì sự phân kỳ(divergence) giữa các nhà giao dịch và thị trường càng cao và hỗn loạn hơn. 


# References
[1] [TESTING FOR MULTIPLE BUBBLES: HISTORICAL EPISODES OF EXUBERANCE AND COLLAPSE IN THE S&P 500](http://korora.econ.yale.edu/phillips/pubs/art/p1498.pdf)

[2] [Recursive Right-Tailed Unit Root Testing with R](https://www.dallasfed.org/~/media/documents/research/international/wpapers/2020/0383.pdf)

[3] [Everything You Always Wanted to Know about Log Periodic Power Laws for Bubble Modelling but Were Afraid to Ask](https://mpra.ub.uni-muenchen.de/47869/1/MPRA_paper_47869.pdf)

[4] [Log Periodic Power Law model for the detection of financial bubbles](https://www.politesi.polimi.it/retrieve/c280fa02-ead6-4885-8602-3f6c24dfb6d1/Bonanomi%20-%20Log%20Periodic%20Power%20Law%20model%20for%20the%20detection%20of%20financial%20bubbles.pdf)

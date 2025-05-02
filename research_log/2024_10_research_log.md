#### 2024-10-13
- Isaac & Gazebo Classis 병행하기로 결정
- Isaac에서 로봇이 튀는 문제 발생
- 해당 문제 원인
    - root joint의 문제로 base_link가 원점에 고정됨
    - 이 fixed joint를 없애버리면 로봇이 공중으로 날아감
    - self.usda파일과 ex2.usda파일을 비교하면서 하나씩 수정해야함
    - 둘의 구조는 self.usda파일이 base_body가 최상위 parent, ex2.usda파일은 base_link가 최상위 parent(즉, base_body랑 parellel한 구조)
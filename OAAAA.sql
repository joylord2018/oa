prompt PL/SQL Developer import file
prompt Created on 2018年2月1日 星期四 by Administrator
set feedback off
set define off
prompt Disabling triggers for N_POAITION...
alter table N_POAITION disable all triggers;
prompt Disabling triggers for N_DEPARTMENT...
alter table N_DEPARTMENT disable all triggers;
prompt Disabling triggers for N_EMPLOYEE...
alter table N_EMPLOYEE disable all triggers;
prompt Disabling triggers for BIZ_LEAVE...
alter table BIZ_LEAVE disable all triggers;
prompt Disabling triggers for BIZ_VOUCHER...
alter table BIZ_VOUCHER disable all triggers;
prompt Disabling triggers for BIZ_RESULT...
alter table BIZ_RESULT disable all triggers;
prompt Disabling triggers for BIZ_VOUCHER_DETAIL...
alter table BIZ_VOUCHER_DETAIL disable all triggers;
prompt Disabling triggers for CLAIM_DEP...
alter table CLAIM_DEP disable all triggers;
prompt Disabling triggers for CLAIM_YEAR...
alter table CLAIM_YEAR disable all triggers;
prompt Disabling triggers for DICTIONARY...
alter table DICTIONARY disable all triggers;
prompt Disabling foreign key constraints for N_EMPLOYEE...
alter table N_EMPLOYEE disable constraint FKBAE88F7F7472B586;
alter table N_EMPLOYEE disable constraint FKBAE88F7FEA83BF51;
prompt Disabling foreign key constraints for BIZ_LEAVE...
alter table BIZ_LEAVE disable constraint FKB2F5F46B725AFB6C;
alter table BIZ_LEAVE disable constraint FKB2F5F46BB7966EE4;
prompt Disabling foreign key constraints for BIZ_VOUCHER...
alter table BIZ_VOUCHER disable constraint FK8D00EF82288A120A;
alter table BIZ_VOUCHER disable constraint FK8D00EF8272F7D0B3;
prompt Disabling foreign key constraints for BIZ_RESULT...
alter table BIZ_RESULT disable constraint FK3F3BFCC9607AC27E;
alter table BIZ_RESULT disable constraint FK3F3BFCC9DEB77C2;
prompt Disabling foreign key constraints for BIZ_VOUCHER_DETAIL...
alter table BIZ_VOUCHER_DETAIL disable constraint FK1E170FAE921A8109;
prompt Disabling foreign key constraints for CLAIM_DEP...
alter table CLAIM_DEP disable constraint FK657DFD6C24AC0DFB;
prompt Disabling foreign key constraints for CLAIM_YEAR...
alter table CLAIM_YEAR disable constraint FK4A4B3A8024AC0DFB;
prompt Deleting DICTIONARY...
delete from DICTIONARY;
commit;
prompt Deleting CLAIM_YEAR...
delete from CLAIM_YEAR;
commit;
prompt Deleting CLAIM_DEP...
delete from CLAIM_DEP;
commit;
prompt Deleting BIZ_VOUCHER_DETAIL...
delete from BIZ_VOUCHER_DETAIL;
commit;
prompt Deleting BIZ_RESULT...
delete from BIZ_RESULT;
commit;
prompt Deleting BIZ_VOUCHER...
delete from BIZ_VOUCHER;
commit;
prompt Deleting BIZ_LEAVE...
delete from BIZ_LEAVE;
commit;
prompt Deleting N_EMPLOYEE...
delete from N_EMPLOYEE;
commit;
prompt Deleting N_DEPARTMENT...
delete from N_DEPARTMENT;
commit;
prompt Deleting N_POAITION...
delete from N_POAITION;
commit;
prompt Loading N_POAITION...
insert into N_POAITION (id, name_cn, name_en)
values (2, '员工', 'staff');
insert into N_POAITION (id, name_cn, name_en)
values (3, '部门经理', 'manager');
insert into N_POAITION (id, name_cn, name_en)
values (4, '总经理', 'generalmanager');
insert into N_POAITION (id, name_cn, name_en)
values (5, '财务', 'cashier');
commit;
prompt 4 records loaded
prompt Loading N_DEPARTMENT...
insert into N_DEPARTMENT (id, name)
values (2, '人事部');
insert into N_DEPARTMENT (id, name)
values (3, '平台研发部');
insert into N_DEPARTMENT (id, name)
values (4, '产品设计部');
insert into N_DEPARTMENT (id, name)
values (5, '财务部');
insert into N_DEPARTMENT (id, name)
values (6, '总裁办公室');
commit;
prompt 5 records loaded
prompt Loading N_EMPLOYEE...
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (2, '李小伟', '123', '1', 2, 2);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (3, '张平', '123', '1', 3, 2);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (4, '叶宁', '123', '1', 3, 3);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (5, '李伟', '123', '1', 4, 3);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (6, '王小明', '123', '2', 5, 5);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (7, '林风', '123', '1', 4, 2);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (8, '张大明', '123', '1', 4, 2);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (9, '李中伟', '123', '1', 2, 2);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (10, '李大伟', '123', '1', 2, 3);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (11, '张总', '123', '1', 6, 4);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (12, '李峰', '123', '1', 5, 5);
insert into N_EMPLOYEE (sn, name, password, status, d_id, p_id)
values (0, '结束', '123', null, null, null);
commit;
prompt 12 records loaded
prompt Loading BIZ_LEAVE...
prompt Table is empty
prompt Loading BIZ_VOUCHER...
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (1, to_timestamp('01-12-2017 19:47:25.817000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-12-2017 19:58:00.860000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 132, 2, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (10, to_timestamp('01-11-2017 19:53:22.081000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-11-2017 19:59:25.508000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 13, 7, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (11, to_timestamp('01-01-2018 19:53:28.399000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-01-2018 19:59:33.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 4132, 7, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (12, to_timestamp('01-01-2018 19:53:59.420000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-01-2018 19:59:37.021000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 568, 8, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (13, to_timestamp('01-01-2018 19:56:10.537000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, '2', 124, 8, 5);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (2, to_timestamp('01-11-2017 19:48:25.516000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-11-2017 19:58:14.104000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 13, 2, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (3, to_timestamp('01-12-2017 19:49:09.596000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-12-2017 19:58:08.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 231, 2, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (4, to_timestamp('01-01-2018 19:49:47.275000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-01-2018 19:58:20.009000', 'dd-mm-yyyy hh24:mi:ss.ff'), '7', 41234, 2, null);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (5, to_timestamp('01-01-2018 19:51:54.502000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-01-2018 19:58:24.717000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 4234, 9, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (6, to_timestamp('01-01-2018 19:51:59.624000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, null, '2', 14, 9, 10);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (7, to_timestamp('01-12-2017 19:52:23.869000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-12-2017 19:58:57.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 123, 3, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (8, to_timestamp('01-11-2017 19:52:34.910000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-11-2017 19:59:01.108000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 41, 3, 11);
insert into BIZ_VOUCHER (id, create_date, event, modify_time, status, total_account, create_sn, next_sn)
values (9, to_timestamp('01-01-2018 19:52:55.233000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, to_timestamp('01-01-2018 19:59:05.125000', 'dd-mm-yyyy hh24:mi:ss.ff'), '3', 134, 3, 11);
commit;
prompt 13 records loaded
prompt Loading BIZ_RESULT...
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (50, to_timestamp('01-01-2018 19:58:00.861000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 1, 10);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (51, to_timestamp('01-01-2018 19:58:08.251000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 3, 10);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (52, to_timestamp('01-01-2018 19:58:14.104000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 2, 10);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (53, to_timestamp('01-01-2018 19:58:20.009000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '3', 4, 10);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (54, to_timestamp('01-01-2018 19:58:24.717000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 5, 10);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (55, to_timestamp('01-01-2018 19:58:57.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 7, 4);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (56, to_timestamp('01-01-2018 19:59:01.109000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 8, 4);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (57, to_timestamp('01-01-2018 19:59:05.125000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 9, 4);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (58, to_timestamp('01-01-2018 19:59:25.508000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 10, 5);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (60, to_timestamp('01-01-2018 19:59:37.021000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 12, 5);
insert into BIZ_RESULT (id, check_time, comm, result, claim_id, check_sn)
values (59, to_timestamp('01-01-2018 19:59:33.040000', 'dd-mm-yyyy hh24:mi:ss.ff'), null, '1', 11, 5);
commit;
prompt 11 records loaded
prompt Loading BIZ_VOUCHER_DETAIL...
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (50, 132, '发违法', '市内交通费', 1);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (59, 13, '啊噶尔', '城际交通费', 10);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (60, 4132, '啊各位噶尔', '城际交通费', 11);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (61, 534, '分啊分为', '城际交通费', 12);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (62, 34, '恶搞法文歌', '城际交通费', 12);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (63, 124, '法尔范', '城际交通费', 13);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (51, 13, '发发', '市内交通费', 2);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (52, 231, '发发尕娃', '城际交通费', 3);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (53, 41234, '法尔法尔无法', '城际交通费', 4);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (54, 4234, '发额外发文', '城际交通费', 5);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (55, 14, '嘎嘎额外', '城际交通费', 6);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (56, 123, '发而无法', '城际交通费', 7);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (57, 41, '发发违法', '城际交通费', 8);
insert into BIZ_VOUCHER_DETAIL (id, account, des, item, bcv_id)
values (58, 134, '额外尕娃', '城际交通费', 9);
commit;
prompt 14 records loaded
prompt Loading CLAIM_DEP...
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (50, 11, 13, 2017, 2);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (51, 11, 13, 2017, 4);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (52, 11, 41, 2017, 3);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (150, 12, 363, 2017, 2);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (151, 12, 123, 2017, 3);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (200, 1, 4234, 2018, 2);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (201, 1, 4700, 2018, 4);
insert into CLAIM_DEP (id, month, total_count, year, dep_id)
values (202, 1, 134, 2018, 3);
commit;
prompt 8 records loaded
prompt Loading CLAIM_YEAR...
insert into CLAIM_YEAR (id, modif_time, total, year, dep_id)
values (50, to_timestamp('01-01-2018 00:00:59.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), 13, 2017, 4);
insert into CLAIM_YEAR (id, modif_time, total, year, dep_id)
values (51, to_timestamp('01-01-2018 00:00:59.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), 376, 2017, 2);
insert into CLAIM_YEAR (id, modif_time, total, year, dep_id)
values (52, to_timestamp('01-01-2018 00:00:59.060000', 'dd-mm-yyyy hh24:mi:ss.ff'), 164, 2017, 3);
commit;
prompt 3 records loaded
prompt Loading DICTIONARY...
insert into DICTIONARY (id, d_no, d_status, d_type)
values (2, 1, '在职', 'Emp_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (3, 2, '离职', 'Emp_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (4, 1, '新创建', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (5, 2, '已提交', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (6, 3, '待审批', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (7, 4, '已打回', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (8, 5, '已审批', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (9, 6, '已付款', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (10, 7, '已终止', 'Claim_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (11, 1, '通过', 'Result_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (12, 2, '打回', 'Result_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (13, 3, '拒绝', 'Result_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (14, 4, '付款', 'Result_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (15, 1, '待审批', 'Leave_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (16, 2, '已审批', 'Leave_status');
insert into DICTIONARY (id, d_no, d_status, d_type)
values (17, 3, '已打回', 'Leave_status');
commit;
prompt 16 records loaded
prompt Enabling foreign key constraints for N_EMPLOYEE...
alter table N_EMPLOYEE enable constraint FKBAE88F7F7472B586;
alter table N_EMPLOYEE enable constraint FKBAE88F7FEA83BF51;
prompt Enabling foreign key constraints for BIZ_LEAVE...
alter table BIZ_LEAVE enable constraint FKB2F5F46B725AFB6C;
alter table BIZ_LEAVE enable constraint FKB2F5F46BB7966EE4;
prompt Enabling foreign key constraints for BIZ_VOUCHER...
alter table BIZ_VOUCHER enable constraint FK8D00EF82288A120A;
alter table BIZ_VOUCHER enable constraint FK8D00EF8272F7D0B3;
prompt Enabling foreign key constraints for BIZ_RESULT...
alter table BIZ_RESULT enable constraint FK3F3BFCC9607AC27E;
alter table BIZ_RESULT enable constraint FK3F3BFCC9DEB77C2;
prompt Enabling foreign key constraints for BIZ_VOUCHER_DETAIL...
alter table BIZ_VOUCHER_DETAIL enable constraint FK1E170FAE921A8109;
prompt Enabling foreign key constraints for CLAIM_DEP...
alter table CLAIM_DEP enable constraint FK657DFD6C24AC0DFB;
prompt Enabling foreign key constraints for CLAIM_YEAR...
alter table CLAIM_YEAR enable constraint FK4A4B3A8024AC0DFB;
prompt Enabling triggers for N_POAITION...
alter table N_POAITION enable all triggers;
prompt Enabling triggers for N_DEPARTMENT...
alter table N_DEPARTMENT enable all triggers;
prompt Enabling triggers for N_EMPLOYEE...
alter table N_EMPLOYEE enable all triggers;
prompt Enabling triggers for BIZ_LEAVE...
alter table BIZ_LEAVE enable all triggers;
prompt Enabling triggers for BIZ_VOUCHER...
alter table BIZ_VOUCHER enable all triggers;
prompt Enabling triggers for BIZ_RESULT...
alter table BIZ_RESULT enable all triggers;
prompt Enabling triggers for BIZ_VOUCHER_DETAIL...
alter table BIZ_VOUCHER_DETAIL enable all triggers;
prompt Enabling triggers for CLAIM_DEP...
alter table CLAIM_DEP enable all triggers;
prompt Enabling triggers for CLAIM_YEAR...
alter table CLAIM_YEAR enable all triggers;
prompt Enabling triggers for DICTIONARY...
alter table DICTIONARY enable all triggers;
set feedback on
set define on
prompt Done.

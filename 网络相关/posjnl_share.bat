@rem ##############################################
@rem #  �������@POS�W���[�i���f�[�^�@�@�@�@�@   #
@rem #  ���L�t�H���_�ڑ��o�b�`                    #
@rem #  u:�h���C�u�Ƀ}�b�s���O�����{����          #
@rem #                                            #
@rem #  �}�b�s���O��ύX����ꍇ�́A�@�@�@        #
@rem #  u:��ύX�������h���C�u�֕ύX���Ă�������  #
@rem ##############################################

@rem �l�b�g���[�N���L ���\��
net use

@rem �l�b�g���[�N���L �����폜�@u:�h���C�u
net use u: /delete /y

@rem �l�b�g���[�N���L �����폜�@\\10.0.132.225\pos_root
net use \\10.0.132.225\pos_root /delete /y

@rem �l�b�g���[�N���L�@u:�@�ց@\\10.0.132.225\pos_root�@�ڑ�
net use u: \\10.0.132.225\pos_root tecsys /user:tecsys

@rem �l�b�g���[�N���L ���\��
net use

@echo ��
@echo ****************** ��L�ɁA�ȉ��Ɠ��l�̕\������Ă���΂n�j ******************
@echo ��
@echo OK           U:        \\10.0.132.225\pos_root   Microsoft Windows Network
@echo ******************************************************************************

@pause

exit

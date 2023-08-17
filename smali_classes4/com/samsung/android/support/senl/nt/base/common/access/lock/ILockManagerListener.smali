.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAIL_CODE_CANCEL:I = 0x6

.field public static final FAIL_CODE_CANCEL_SDOC_MIGRATION:I = 0x9

.field public static final FAIL_CODE_DELETED_NOTE:I = 0xa

.field public static final FAIL_CODE_EMPTY_GUID:I = 0x7

.field public static final FAIL_CODE_EMPTY_UUID:I = 0x1

.field public static final FAIL_CODE_LEGACY_NOTE:I = 0x4

.field public static final FAIL_CODE_NEED_ACCOUNT_PERMISSION:I = 0x8

.field public static final FAIL_CODE_NOT_LOGIN:I = 0x2

.field public static final FAIL_CODE_NOT_OWNER:I = 0x3

.field public static final FAIL_CODE_NO_USER_INFO:I = 0x5


# virtual methods
.method public abstract onCreatePasswordFail(IILandroid/content/Intent;)V
.end method

.method public abstract onCreatePasswordSuccess(ILandroid/content/Intent;)V
.end method

.method public varargs abstract onLockFail(II[Ljava/lang/String;)V
.end method

.method public varargs abstract onLockSuccess(I[Ljava/lang/String;)V
.end method

.method public varargs abstract onUnlockFail(II[Ljava/lang/String;)V
.end method

.method public varargs abstract onUnlockSuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public varargs abstract onVerifyFail(II[Ljava/lang/String;)V
.end method

.method public varargs abstract onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_GET_ACTIVITY_RESULT:I = 0x6

.field public static final ACTION_MOVE_TO_SECURE_FOLDER:I = 0x7

.field public static final ACTION_NONE:I = 0x0

.field public static final ACTION_SET_LOCK_NOTE:I = 0x3

.field public static final ACTION_SET_UNLOCK_NOTE:I = 0x4

.field public static final ACTION_UNLOCK_NOTE:I = 0x5

.field public static final ACTION_VERIFY_LOCKED_NOTE:I = 0x1

.field public static final ACTION_VERIFY_LOCKED_NOTE_FOR_CONVERT:I = 0x2

.field public static final ACTION_VERIFY_WITH_MULTI_ACCOUNT_LOCKED_NOTE:I = 0x8


# virtual methods
.method public abstract restoreLockHelperTask()V
.end method

.method public varargs abstract verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public varargs abstract verifyLockedNoteWithMultiAccount(ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

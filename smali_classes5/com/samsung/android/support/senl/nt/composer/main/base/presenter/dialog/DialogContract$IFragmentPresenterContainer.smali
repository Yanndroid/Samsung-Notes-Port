.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFragmentPresenterContainer"
.end annotation


# static fields
.field public static final TYPE_DELETED_NOTE_CONFIRM:I = 0x6

.field public static final TYPE_DIRECT_WRITE_SETTING:I = 0xc

.field public static final TYPE_HASHTAG_RENAME:I = 0x3

.field public static final TYPE_HW_BEAUTIFIER_LANGUAGE_SETTING:I = 0xf

.field public static final TYPE_SAVE_AS_RENAME:I = 0x7

.field public static final TYPE_SAVE_NOTE_CONFIRM:I = 0x8

.field public static final TYPE_SHARE_SAVE_NOTE_CONFIRM:I = 0xe

.field public static final TYPE_SYNC_CONFLICT:I = 0xb

.field public static final TYPE_SYNC_WAITING:I = 0xa

.field public static final TYPE_TEXT_RECOGNITION:I = 0x2

.field public static final TYPE_VOICE_DATA_RENAME:I = 0x9

.field public static final TYPE_VOICE_DELTE_CONFIRM:I = 0xd

.field public static final TYPE_VOICE_RENAME:I = 0x1


# virtual methods
.method public abstract getDialogFragmentPresenter(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IFragmentPresenter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

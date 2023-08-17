.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFoldStateCompatImpl"
.end annotation


# static fields
.field public static final FOLD_STATE_CLOSED:I = 0x1

.field public static final FOLD_STATE_FLIPPED:I = 0x4

.field public static final FOLD_STATE_FULL_OPENED:I = 0x3

.field public static final FOLD_STATE_HALF_OPENED:I = 0x2

.field public static final FOLD_STATE_NONE:I


# virtual methods
.method public abstract createProxy(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;
.end method

.method public abstract setFolderStateCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;)V
.end method

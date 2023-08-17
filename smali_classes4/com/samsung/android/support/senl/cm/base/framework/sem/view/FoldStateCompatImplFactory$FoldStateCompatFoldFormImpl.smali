.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldStateCompatFoldFormImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createProxy(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;Lcom/samsung/android/support/senl/cm/base/framework/sem/view/f;)V

    return-object v0
.end method

.method public setFolderStateCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;)V

    return-void
.end method

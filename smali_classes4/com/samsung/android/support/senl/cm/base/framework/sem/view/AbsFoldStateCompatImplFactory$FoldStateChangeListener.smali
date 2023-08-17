.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FoldStateChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;
    }
.end annotation


# instance fields
.field public mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    return-void
.end method


# virtual methods
.method public abstract onChanged(Z)V
.end method

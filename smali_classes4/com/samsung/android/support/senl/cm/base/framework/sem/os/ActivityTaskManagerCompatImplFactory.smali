.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManagerCompatImplFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory$Sos;-><init>()V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;

    move-result-object p1

    return-object p1
.end method

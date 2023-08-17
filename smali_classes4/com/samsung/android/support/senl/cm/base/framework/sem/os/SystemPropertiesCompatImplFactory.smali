.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory$SystemPropertiesCompatSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPropertiesCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory$SystemPropertiesCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/SystemPropertiesCompatImplFactory$SystemPropertiesCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/h;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;

    move-result-object p1

    return-object p1
.end method

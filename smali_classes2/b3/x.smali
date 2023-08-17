.class public Lb3/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    const-string v3, "TipCardUtils"

    if-ne v1, v2, :cond_0

    new-instance v1, Lb3/v;

    invoke-direct {v1, p0}, Lb3/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "onCreate() : TipCardNotEnoughCloudStorage added"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v1, p1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    new-instance v1, Lb3/c;

    invoke-direct {v1, p0}, Lb3/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "onCreate() : TipCardCloudServerStorageExceeds added"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    new-instance v1, Lb3/s;

    invoke-direct {v1, p0}, Lb3/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToSyncServerError added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 p0, p1, 0x40

    const/16 v1, 0x40

    if-ne p0, v1, :cond_3

    new-instance p0, Lb3/p;

    invoke-direct {p0}, Lb3/p;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToSyncNetworkError added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 p0, p1, 0x2

    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    new-instance p0, Lb3/n;

    invoke-direct {p0}, Lb3/n;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToImportServerError added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    and-int/lit8 p0, p1, 0x8

    const/16 v1, 0x8

    if-ne p0, v1, :cond_5

    new-instance p0, Lb3/l;

    invoke-direct {p0}, Lb3/l;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToImportDeviceStorageFull added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    and-int/lit16 p0, p1, 0x400

    const/16 v1, 0x400

    if-ne p0, v1, :cond_6

    new-instance p0, Lb3/r;

    invoke-direct {p0}, Lb3/r;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToSyncPermission added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    and-int/lit16 p0, p1, 0x800

    const/16 v1, 0x800

    if-ne p0, v1, :cond_7

    new-instance p0, Lb3/w;

    invoke-direct {p0}, Lb3/w;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardNotEnoughCloudStorageInSettings added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 p0, 0x80

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_8

    new-instance p0, Lb3/q;

    invoke-direct {p0}, Lb3/q;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "onCreate() : TipCardFailToSyncNotEnoughDeviceStorage added"

    invoke-static {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

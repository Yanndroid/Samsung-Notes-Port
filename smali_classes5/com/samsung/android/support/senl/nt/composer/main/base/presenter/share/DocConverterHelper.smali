.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;
    }
.end annotation


# static fields
.field private static mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;->create()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setCreator(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;

    return-void
.end method


# virtual methods
.method public isActivated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public wdocToPPT(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public wdocToWord(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

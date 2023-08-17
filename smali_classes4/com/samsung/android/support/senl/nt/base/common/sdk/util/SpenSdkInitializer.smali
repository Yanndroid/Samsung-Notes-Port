.class public Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_CACHE_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SpenSdkInitializer"

.field public static final WNOTE_BODY_TEXT_LIMIT:I = 0x55730

.field public static final WNOTE_OBJECT_TEXT_LIMIT:I = 0x1388

.field private static mContextHashCode:I


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

.method public static declared-synchronized initialize(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;

    monitor-enter v0

    :try_start_0
    const-string v1, "SpenSdkInitializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize# context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->mContextHashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    monitor-exit v0

    return v4

    :cond_1
    :try_start_2
    new-instance v2, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0xc8

    :try_start_3
    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sput p0, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->mContextHashCode:I

    const/16 p0, 0x1388

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setDefaultTextLimit(I)V

    const p0, 0x55730

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setDefaultBodyTextLimit(I)V

    const-string p0, "SpenSdkInitializer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize# done mContextHashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->mContextHashCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    :try_start_4
    const-string v2, "SpenSdkInitializer"

    const-string v3, "Initialize# "

    invoke-static {v2, v3, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

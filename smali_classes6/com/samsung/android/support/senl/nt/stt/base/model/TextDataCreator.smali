.class public Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextDataCreator"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;


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

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;->mInstance:Lcom/samsung/android/support/senl/nt/stt/base/model/TextDataCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cloneTextData(Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TextDataCreator"

    const-string v0, "makeCloneOfSttData() : clone fail"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createTextData(Ljava/lang/String;II)Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/stt/base/model/TextData;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.class public Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private checker:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultHandler:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private timeout:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->access$000()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->timeout:Ljava/time/Duration;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->defaultHandler:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->defaultHandler:Ljava/util/function/Supplier;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->timeout:Ljava/time/Duration;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/time/Duration;Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$1;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->checker:Ljava/util/function/Function;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->access$200(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-object v0
.end method

.method public setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TV;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->checker:Ljava/util/function/Function;

    return-object p0
.end method

.method public setTimeout(Ljava/time/Duration;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->timeout:Ljava/time/Duration;

    return-object p0
.end method

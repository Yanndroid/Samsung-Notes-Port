.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/m0;->a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/m0;->a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->b(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

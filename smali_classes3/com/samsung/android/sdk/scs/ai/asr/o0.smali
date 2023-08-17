.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/o0;->a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/o0;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/o0;->a:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/o0;->b:Ljava/util/function/Supplier;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->c(Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

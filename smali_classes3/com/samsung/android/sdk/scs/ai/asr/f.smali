.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/f;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/f;->a:Lcom/samsung/android/sdk/scs/ai/asr/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->l(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

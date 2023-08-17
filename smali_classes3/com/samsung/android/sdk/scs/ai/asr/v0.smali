.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/v0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/v0;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/v0;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/v0;->a:Lcom/samsung/android/sdk/scs/ai/asr/v0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

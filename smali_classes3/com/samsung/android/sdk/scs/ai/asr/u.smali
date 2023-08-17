.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/u;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/u;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/u;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/u;->a:Lcom/samsung/android/sdk/scs/ai/asr/u;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->k(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)Z

    move-result p1

    return p1
.end method

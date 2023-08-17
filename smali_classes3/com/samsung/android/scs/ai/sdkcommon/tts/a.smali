.class public final synthetic Lcom/samsung/android/scs/ai/sdkcommon/tts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    invoke-direct {v0}, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

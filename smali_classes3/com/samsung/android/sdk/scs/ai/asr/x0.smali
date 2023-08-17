.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/x0;->a:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/x0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/x0;->a:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/x0;->b:Ljava/lang/String;

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->b(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

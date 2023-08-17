.class public Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->doInBackground([Ljava/lang/Void;)Ld1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ld1/g;

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;[Ld1/g;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->b:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->a:[Ld1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 3

    const-string p1, "QT/QuotaServiceTask"

    const-string v0, "handleResponse()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->b:Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    iget p2, p2, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;->mApp:I

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const-string p2, "invalid appId!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->a:[Ld1/g;

    invoke-static {v0}, Ld1/g;->d(Lorg/json/JSONObject;)Ld1/g;

    move-result-object v0

    aput-object v0, p2, v1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->a:[Ld1/g;

    invoke-static {v0}, Ld1/g;->c(Lorg/json/JSONObject;)Ld1/g;

    move-result-object v0

    aput-object v0, p2, v1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask$a;->a:[Ld1/g;

    invoke-static {v0}, Ld1/g;->b(Lorg/json/JSONObject;)Ld1/g;

    move-result-object v0

    aput-object v0, p2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

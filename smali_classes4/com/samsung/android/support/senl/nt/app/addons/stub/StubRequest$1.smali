.class Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest$1;
.super Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/stub/StubRequest;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubData;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "StubManager$StubRequest"

    return-object v0
.end method

.class Lcom/android/volley/AsyncRequestQueue$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$2;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$2$1;->this$1:Lcom/android/volley/AsyncRequestQueue$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$2$1;->this$1:Lcom/android/volley/AsyncRequestQueue$2;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$2;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$000(Lcom/android/volley/AsyncRequestQueue;)V

    return-void
.end method

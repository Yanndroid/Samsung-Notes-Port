.class Lcom/android/volley/toolbox/AsyncHttpStack$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public authFailureError:Lcom/android/volley/AuthFailureError;

.field public httpResponse:Lcom/android/volley/toolbox/HttpResponse;

.field public ioException:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Lcom/android/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/android/volley/AuthFailureError;)V
    .locals 0
    .param p1    # Lcom/android/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/volley/AuthFailureError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->httpResponse:Lcom/android/volley/toolbox/HttpResponse;

    iput-object p2, p0, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->ioException:Ljava/io/IOException;

    iput-object p3, p0, Lcom/android/volley/toolbox/AsyncHttpStack$Response;->authFailureError:Lcom/android/volley/AuthFailureError;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/android/volley/AuthFailureError;Lcom/android/volley/toolbox/AsyncHttpStack$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/AsyncHttpStack$Response;-><init>(Lcom/android/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/android/volley/AuthFailureError;)V

    return-void
.end method

.class Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->lookup(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->this$0:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    iput-object p2, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 2

    const-string v0, "http.request"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HttpRequest;

    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->this$0:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry$1;->val$name:Ljava/lang/String;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpMessage;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object p1

    return-object p1
.end method

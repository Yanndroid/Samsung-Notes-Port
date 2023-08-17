.class public Lcz/msebera/android/httpclient/auth/params/AuthParamBean;
.super Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setCredentialCharset(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/auth/params/AuthParams;->setCredentialCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method

.class public Lcz/msebera/android/httpclient/conn/params/ConnManagerParamBean;
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
.method public setConnectionsPerRoute(Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.conn-manager.max-per-route"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setMaxTotalConnections(I)V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.conn-manager.max-total"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setTimeout(J)V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/params/HttpAbstractParamBean;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

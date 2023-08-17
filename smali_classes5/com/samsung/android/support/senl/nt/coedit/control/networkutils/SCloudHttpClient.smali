.class public Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mHttpRequestUtil:Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUrlUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUrlUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->mHttpRequestUtil:Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->mHttpRequestUtil:Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->mHttpRequestUtil:Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpClient;->mHttpRequestUtil:Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/HttpRequestUtil;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/networkutils/SCloudHttpResponse;

    move-result-object p1

    return-object p1
.end method

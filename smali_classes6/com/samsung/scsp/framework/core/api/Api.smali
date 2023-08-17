.class public interface abstract Lcom/samsung/scsp/framework/core/api/Api;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_HTTP:Ljava/lang/String; = "application/http"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"


# virtual methods
.method public abstract delete(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
.end method

.method public abstract download(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
.end method

.method public abstract update(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
.end method

.method public abstract upload(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
.end method

.class public abstract Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback;
.super Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/TypedNotificationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getJsonFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public final getObjectParser()Lcom/google/api/client/json/JsonObjectParser;
    .locals 2

    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public bridge synthetic getObjectParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback;->getObjectParser()Lcom/google/api/client/json/JsonObjectParser;

    move-result-object v0

    return-object v0
.end method

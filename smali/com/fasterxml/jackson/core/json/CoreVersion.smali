.class public Lcom/fasterxml/jackson/core/json/CoreVersion;
.super Lcom/fasterxml/jackson/core/util/VersionUtil;
.source "SourceFile"


# static fields
.field public static final instance:Lcom/fasterxml/jackson/core/json/CoreVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/json/CoreVersion;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/json/CoreVersion;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/json/CoreVersion;->instance:Lcom/fasterxml/jackson/core/json/CoreVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/util/VersionUtil;-><init>()V

    return-void
.end method

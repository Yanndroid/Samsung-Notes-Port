.class public interface abstract Lcom/google/api/client/util/Sleeper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/google/api/client/util/Sleeper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/client/util/Sleeper$1;

    invoke-direct {v0}, Lcom/google/api/client/util/Sleeper$1;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    return-void
.end method


# virtual methods
.method public abstract sleep(J)V
.end method

.class public interface abstract Lcom/google/api/client/util/Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYSTEM:Lcom/google/api/client/util/Clock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/client/util/Clock$1;

    invoke-direct {v0}, Lcom/google/api/client/util/Clock$1;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    return-void
.end method


# virtual methods
.method public abstract currentTimeMillis()J
.end method

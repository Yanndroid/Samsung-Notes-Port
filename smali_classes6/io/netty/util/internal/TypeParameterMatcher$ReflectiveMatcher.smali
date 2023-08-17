.class final Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;
.super Lio/netty/util/internal/TypeParameterMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/TypeParameterMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectiveMatcher"
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/util/internal/TypeParameterMatcher;-><init>()V

    iput-object p1, p0, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

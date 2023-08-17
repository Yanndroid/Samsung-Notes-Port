.class abstract Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luk/ac/ed/ph/snuggletex/definitions/CommandOrEnvironment;"
    }
.end annotation


# instance fields
.field public final allowedModes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation
.end field

.field public final allowingOptionalArgument:Z

.field public final argumentCount:I

.field public final domBuildingHandler:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field public final interpretationMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation
.end field

.field public final texName:Ljava/lang/String;

.field public final textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/util/EnumSet;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            "TH;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "texName"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedModes"

    invoke-static {p4, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->texName:Ljava/lang/String;

    iput-boolean p2, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->allowingOptionalArgument:Z

    iput p3, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->argumentCount:I

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->allowedModes:Ljava/util/EnumSet;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->interpretationMap:Ljava/util/EnumMap;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    iput-object p7, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->domBuildingHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAllowedModes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->allowedModes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getArgumentCount()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->argumentCount:I

    return v0
.end method

.method public getDOMBuildingHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->domBuildingHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->interpretationMap:Ljava/util/EnumMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getInterpretationMap()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->interpretationMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getTeXName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->texName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->textFlowContext:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    return-object v0
.end method

.method public hasInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->interpretationMap:Ljava/util/EnumMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAllowingOptionalArgument()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->allowingOptionalArgument:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommandOrEnvironment;->texName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

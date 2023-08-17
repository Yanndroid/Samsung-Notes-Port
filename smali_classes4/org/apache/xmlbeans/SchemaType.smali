.class public interface abstract Lorg/apache/xmlbeans/SchemaType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaComponent;
.implements Lorg/apache/xmlbeans/SchemaAnnotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaType$Ref;
    }
.end annotation


# static fields
.field public static final ATOMIC:I = 0x1

.field public static final BTC_ANY_SIMPLE:I = 0x2

.field public static final BTC_ANY_TYPE:I = 0x1

.field public static final BTC_ANY_URI:I = 0x6

.field public static final BTC_BASE_64_BINARY:I = 0x4

.field public static final BTC_BOOLEAN:I = 0x3

.field public static final BTC_BYTE:I = 0x1a

.field public static final BTC_DATE:I = 0x10

.field public static final BTC_DATE_TIME:I = 0xe

.field public static final BTC_DECIMAL:I = 0xb

.field public static final BTC_DOUBLE:I = 0xa

.field public static final BTC_DURATION:I = 0xd

.field public static final BTC_ENTITIES:I = 0x2c

.field public static final BTC_ENTITY:I = 0x2b

.field public static final BTC_FIRST_PRIMITIVE:I = 0x2

.field public static final BTC_FLOAT:I = 0x9

.field public static final BTC_G_DAY:I = 0x14

.field public static final BTC_G_MONTH:I = 0x15

.field public static final BTC_G_MONTH_DAY:I = 0x13

.field public static final BTC_G_YEAR:I = 0x12

.field public static final BTC_G_YEAR_MONTH:I = 0x11

.field public static final BTC_HEX_BINARY:I = 0x5

.field public static final BTC_ID:I = 0x28

.field public static final BTC_IDREF:I = 0x29

.field public static final BTC_IDREFS:I = 0x2a

.field public static final BTC_INT:I = 0x18

.field public static final BTC_INTEGER:I = 0x16

.field public static final BTC_LANGUAGE:I = 0x27

.field public static final BTC_LAST_BUILTIN:I = 0x2e

.field public static final BTC_LAST_PRIMITIVE:I = 0x15

.field public static final BTC_LONG:I = 0x17

.field public static final BTC_NAME:I = 0x25

.field public static final BTC_NCNAME:I = 0x26

.field public static final BTC_NEGATIVE_INTEGER:I = 0x1c

.field public static final BTC_NMTOKEN:I = 0x2d

.field public static final BTC_NMTOKENS:I = 0x2e

.field public static final BTC_NON_NEGATIVE_INTEGER:I = 0x1d

.field public static final BTC_NON_POSITIVE_INTEGER:I = 0x1b

.field public static final BTC_NORMALIZED_STRING:I = 0x23

.field public static final BTC_NOTATION:I = 0x8

.field public static final BTC_NOT_BUILTIN:I = 0x0

.field public static final BTC_POSITIVE_INTEGER:I = 0x1e

.field public static final BTC_QNAME:I = 0x7

.field public static final BTC_SHORT:I = 0x19

.field public static final BTC_STRING:I = 0xc

.field public static final BTC_TIME:I = 0xf

.field public static final BTC_TOKEN:I = 0x24

.field public static final BTC_UNSIGNED_BYTE:I = 0x22

.field public static final BTC_UNSIGNED_INT:I = 0x20

.field public static final BTC_UNSIGNED_LONG:I = 0x1f

.field public static final BTC_UNSIGNED_SHORT:I = 0x21

.field public static final DT_EXTENSION:I = 0x2

.field public static final DT_NOT_DERIVED:I = 0x0

.field public static final DT_RESTRICTION:I = 0x1

.field public static final ELEMENT_CONTENT:I = 0x3

.field public static final EMPTY_CONTENT:I = 0x1

.field public static final FACET_ENUMERATION:I = 0xb

.field public static final FACET_FRACTION_DIGITS:I = 0x8

.field public static final FACET_LENGTH:I = 0x0

.field public static final FACET_MAX_EXCLUSIVE:I = 0x6

.field public static final FACET_MAX_INCLUSIVE:I = 0x5

.field public static final FACET_MAX_LENGTH:I = 0x2

.field public static final FACET_MIN_EXCLUSIVE:I = 0x3

.field public static final FACET_MIN_INCLUSIVE:I = 0x4

.field public static final FACET_MIN_LENGTH:I = 0x1

.field public static final FACET_PATTERN:I = 0xa

.field public static final FACET_TOTAL_DIGITS:I = 0x7

.field public static final FACET_WHITE_SPACE:I = 0x9

.field public static final LAST_BASIC_FACET:I = 0x8

.field public static final LAST_FACET:I = 0xb

.field public static final LAST_PROPERTY:I = 0xf

.field public static final LIST:I = 0x3

.field public static final MIXED_CONTENT:I = 0x4

.field public static final NOT_COMPLEX_TYPE:I = 0x0

.field public static final NOT_DECIMAL:I = 0x0

.field public static final NOT_SIMPLE:I = 0x0

.field public static final PARTIAL_ORDER:I = 0x1

.field public static final PROPERTY_BOUNDED:I = 0xd

.field public static final PROPERTY_CARDINALITY:I = 0xe

.field public static final PROPERTY_NUMERIC:I = 0xf

.field public static final PROPERTY_ORDERED:I = 0xc

.field public static final SIMPLE_CONTENT:I = 0x2

.field public static final SIZE_BIG_DECIMAL:I = 0xf4241

.field public static final SIZE_BIG_INTEGER:I = 0xf4240

.field public static final SIZE_BYTE:I = 0x8

.field public static final SIZE_INT:I = 0x20

.field public static final SIZE_LONG:I = 0x40

.field public static final SIZE_SHORT:I = 0x10

.field public static final TOTAL_ORDER:I = 0x2

.field public static final UNION:I = 0x2

.field public static final UNORDERED:I = 0x0

.field public static final WS_COLLAPSE:I = 0x3

.field public static final WS_PRESERVE:I = 0x1

.field public static final WS_REPLACE:I = 0x2

.field public static final WS_UNSPECIFIED:I


# virtual methods
.method public abstract blockExtension()Z
.end method

.method public abstract blockRestriction()Z
.end method

.method public abstract enumEntryForString(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaStringEnumEntry;
.end method

.method public abstract enumForInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract enumForString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract finalExtension()Z
.end method

.method public abstract finalList()Z
.end method

.method public abstract finalRestriction()Z
.end method

.method public abstract finalUnion()Z
.end method

.method public abstract getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getAnonymousUnionMemberOrdinal()I
.end method

.method public abstract getAttributeModel()Lorg/apache/xmlbeans/SchemaAttributeModel;
.end method

.method public abstract getAttributeProperties()[Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getAttributeType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getBaseType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getBuiltinTypeCode()I
.end method

.method public abstract getCommonBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getContainerField()Lorg/apache/xmlbeans/SchemaField;
.end method

.method public abstract getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getContentModel()Lorg/apache/xmlbeans/SchemaParticle;
.end method

.method public abstract getContentType()I
.end method

.method public abstract getDecimalSize()I
.end method

.method public abstract getDerivationType()I
.end method

.method public abstract getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getElementProperties()[Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getElementProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getElementSequencer()Lorg/apache/xmlbeans/SchemaTypeElementSequencer;
.end method

.method public abstract getElementType(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getEnumJavaClass()Ljava/lang/Class;
.end method

.method public abstract getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;
.end method

.method public abstract getFacet(I)Lorg/apache/xmlbeans/XmlAnySimpleType;
.end method

.method public abstract getFullJavaImplName()Ljava/lang/String;
.end method

.method public abstract getFullJavaName()Ljava/lang/String;
.end method

.method public abstract getJavaClass()Ljava/lang/Class;
.end method

.method public abstract getListItemType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getOuterType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getPatterns()[Ljava/lang/String;
.end method

.method public abstract getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getProperties()[Lorg/apache/xmlbeans/SchemaProperty;
.end method

.method public abstract getRef()Lorg/apache/xmlbeans/SchemaType$Ref;
.end method

.method public abstract getShortJavaImplName()Ljava/lang/String;
.end method

.method public abstract getShortJavaName()Ljava/lang/String;
.end method

.method public abstract getSimpleVariety()I
.end method

.method public abstract getStringEnumEntries()[Lorg/apache/xmlbeans/SchemaStringEnumEntry;
.end method

.method public abstract getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
.end method

.method public abstract getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getUnionSubTypes()[Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract getWhiteSpaceRule()I
.end method

.method public abstract hasAllContent()Z
.end method

.method public abstract hasAttributeWildcards()Z
.end method

.method public abstract hasElementWildcards()Z
.end method

.method public abstract hasPatternFacet()Z
.end method

.method public abstract hasStringEnumValues()Z
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isAnonymousType()Z
.end method

.method public abstract isAssignableFrom(Lorg/apache/xmlbeans/SchemaType;)Z
.end method

.method public abstract isAttributeType()Z
.end method

.method public abstract isBounded()Z
.end method

.method public abstract isBuiltinType()Z
.end method

.method public abstract isCompiled()Z
.end method

.method public abstract isDocumentType()Z
.end method

.method public abstract isFacetFixed(I)Z
.end method

.method public abstract isFinite()Z
.end method

.method public abstract isNoType()Z
.end method

.method public abstract isNumeric()Z
.end method

.method public abstract isOrderSensitive()Z
.end method

.method public abstract isPrimitiveType()Z
.end method

.method public abstract isSimpleType()Z
.end method

.method public abstract isSkippedAnonymousType()Z
.end method

.method public abstract isURType()Z
.end method

.method public abstract isValidSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract matchPatternFacet(Ljava/lang/String;)Z
.end method

.method public abstract newValue(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlAnySimpleType;
.end method

.method public abstract ordered()I
.end method

.method public abstract qnameSetForWildcardAttributes()Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract qnameSetForWildcardElements()Lorg/apache/xmlbeans/QNameSet;
.end method

import api.schema
import graphene

from graphene_django.debug import DjangoDebug


class Query(api.schema.Query, graphene.ObjectType):
    debug = graphene.Field(DjangoDebug, name="_debug")


schema = graphene.Schema(query=Query)
